.class Ljiqqa/recipe/Main$1;
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
    iput-object p1, p0, Ljiqqa/recipe/Main$1;->this$0:Ljiqqa/recipe/Main;

    iput p2, p0, Ljiqqa/recipe/Main$1;->val$position:I

    iput-wide p3, p0, Ljiqqa/recipe/Main$1;->val$id:J

    iput-object p5, p0, Ljiqqa/recipe/Main$1;->val$mQuickAction:Ljiqqa/recipe/QuickAction;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const-string v9, "_serves"

    const-string v8, "_instructions"

    const-string v7, "_ingredients"

    const-string v6, "_image"

    const-string v5, "_category"

    .line 143
    iget-object v2, p0, Ljiqqa/recipe/Main$1;->this$0:Ljiqqa/recipe/Main;

    #getter for: Ljiqqa/recipe/Main;->rCursor:Landroid/database/Cursor;
    invoke-static {v2}, Ljiqqa/recipe/Main;->access$0(Ljiqqa/recipe/Main;)Landroid/database/Cursor;

    move-result-object v0

    .line 144
    .local v0, c:Landroid/database/Cursor;
    iget v2, p0, Ljiqqa/recipe/Main$1;->val$position:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 145
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Ljiqqa/recipe/Main$1;->this$0:Ljiqqa/recipe/Main;

    invoke-virtual {v2}, Ljiqqa/recipe/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Ljiqqa/recipe/ViewRecipe;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v1, i:Landroid/content/Intent;
    const-string v2, "_id"

    iget-wide v3, p0, Ljiqqa/recipe/Main$1;->val$id:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 147
    const-string v2, "_category"

    const-string v2, "_category"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v2, "_title"

    const-string v3, "_title"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v2, "_serves"

    const-string v2, "_serves"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v2, "_ingredients"

    const-string v2, "_ingredients"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v2, "_instructions"

    const-string v2, "_instructions"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v2, "_image"

    const-string v2, "_image"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object v2, p0, Ljiqqa/recipe/Main$1;->this$0:Ljiqqa/recipe/Main;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Ljiqqa/recipe/Main;->startActivityForResult(Landroid/content/Intent;I)V

    .line 154
    iget-object v2, p0, Ljiqqa/recipe/Main$1;->val$mQuickAction:Ljiqqa/recipe/QuickAction;

    invoke-virtual {v2}, Ljiqqa/recipe/QuickAction;->dismiss()V

    .line 155
    return-void
.end method
