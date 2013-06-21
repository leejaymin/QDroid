.class Ljiqqa/recipe/Main$3;
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
.method constructor <init>(Ljiqqa/recipe/Main;IJLjiqqa/recipe/QuickAction;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ljiqqa/recipe/Main$3;->this$0:Ljiqqa/recipe/Main;

    iput p2, p0, Ljiqqa/recipe/Main$3;->val$position:I

    iput-wide p3, p0, Ljiqqa/recipe/Main$3;->val$id:J

    iput-object p5, p0, Ljiqqa/recipe/Main$3;->val$mQuickAction:Ljiqqa/recipe/QuickAction;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const-string v10, "\n\n"

    .line 187
    iget-object v7, p0, Ljiqqa/recipe/Main$3;->this$0:Ljiqqa/recipe/Main;

    #getter for: Ljiqqa/recipe/Main;->rCursor:Landroid/database/Cursor;
    invoke-static {v7}, Ljiqqa/recipe/Main;->access$0(Ljiqqa/recipe/Main;)Landroid/database/Cursor;

    move-result-object v1

    .line 188
    .local v1, c:Landroid/database/Cursor;
    iget v7, p0, Ljiqqa/recipe/Main$3;->val$position:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 189
    iget-object v7, p0, Ljiqqa/recipe/Main$3;->this$0:Ljiqqa/recipe/Main;

    iget-object v7, v7, Ljiqqa/recipe/Main;->db:Ljiqqa/recipe/RecipeDBAdapter;

    iget-wide v8, p0, Ljiqqa/recipe/Main$3;->val$id:J

    invoke-virtual {v7, v8, v9}, Ljiqqa/recipe/RecipeDBAdapter;->getSingleRecipe(J)Landroid/database/Cursor;

    .line 191
    const-string v7, "_title"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 190
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, recipeTitle:Ljava/lang/String;
    const-string v7, "_serves"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 192
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, recipeServes:Ljava/lang/String;
    const-string v7, "_ingredients"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 194
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, recipeIngredients:Ljava/lang/String;
    const-string v7, "_instructions"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 196
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, recipeInstructions:Ljava/lang/String;
    const-string v0, "Sent using My Recipe for Android\u2122"

    .line 199
    .local v0, appAdver:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " [Serves: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 201
    const-string v8, "Ingredients:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 202
    const-string v8, "Instructions:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 203
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 199
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, theMessage:Ljava/lang/String;
    iget-object v7, p0, Ljiqqa/recipe/Main$3;->this$0:Ljiqqa/recipe/Main;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v8, v7, Ljiqqa/recipe/Main;->shareRecipe:Landroid/content/Intent;

    .line 206
    iget-object v7, p0, Ljiqqa/recipe/Main$3;->this$0:Ljiqqa/recipe/Main;

    iget-object v7, v7, Ljiqqa/recipe/Main;->shareRecipe:Landroid/content/Intent;

    const-string v8, "android.intent.extra.EMAIL"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v7, p0, Ljiqqa/recipe/Main$3;->this$0:Ljiqqa/recipe/Main;

    iget-object v7, v7, Ljiqqa/recipe/Main;->shareRecipe:Landroid/content/Intent;

    const-string v8, "android.intent.extra.SUBJECT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " recipe"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    iget-object v7, p0, Ljiqqa/recipe/Main$3;->this$0:Ljiqqa/recipe/Main;

    iget-object v7, v7, Ljiqqa/recipe/Main;->shareRecipe:Landroid/content/Intent;

    const-string v8, "android.intent.extra.TEXT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v7, p0, Ljiqqa/recipe/Main$3;->this$0:Ljiqqa/recipe/Main;

    iget-object v7, v7, Ljiqqa/recipe/Main;->shareRecipe:Landroid/content/Intent;

    const-string v8, "message/rfc822"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iget-object v7, p0, Ljiqqa/recipe/Main$3;->this$0:Ljiqqa/recipe/Main;

    iget-object v8, p0, Ljiqqa/recipe/Main$3;->this$0:Ljiqqa/recipe/Main;

    iget-object v8, v8, Ljiqqa/recipe/Main;->shareRecipe:Landroid/content/Intent;

    const-string v9, "Send Email"

    invoke-static {v8, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljiqqa/recipe/Main;->startActivity(Landroid/content/Intent;)V

    .line 211
    iget-object v7, p0, Ljiqqa/recipe/Main$3;->val$mQuickAction:Ljiqqa/recipe/QuickAction;

    invoke-virtual {v7}, Ljiqqa/recipe/QuickAction;->dismiss()V

    .line 212
    return-void
.end method
