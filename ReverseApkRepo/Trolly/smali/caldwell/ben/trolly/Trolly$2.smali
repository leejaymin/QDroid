.class Lcaldwell/ben/trolly/Trolly$2;
.super Ljava/lang/Object;
.source "Trolly.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcaldwell/ben/trolly/Trolly;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcaldwell/ben/trolly/Trolly;


# direct methods
.method constructor <init>(Lcaldwell/ben/trolly/Trolly;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcaldwell/ben/trolly/Trolly$2;->this$0:Lcaldwell/ben/trolly/Trolly;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "view"

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    const-string v12, "status"

    .line 264
    iget-object v0, p0, Lcaldwell/ben/trolly/Trolly$2;->this$0:Lcaldwell/ben/trolly/Trolly;

    #getter for: Lcaldwell/ben/trolly/Trolly;->mTextBox:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcaldwell/ben/trolly/Trolly;->access$1(Lcaldwell/ben/trolly/Trolly;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 265
    iget-object v0, p0, Lcaldwell/ben/trolly/Trolly$2;->this$0:Lcaldwell/ben/trolly/Trolly;

    invoke-virtual {v0}, Lcaldwell/ben/trolly/Trolly;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcaldwell/ben/trolly/Trolly$2;->this$0:Lcaldwell/ben/trolly/Trolly;

    invoke-virtual {v1}, Lcaldwell/ben/trolly/Trolly;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 266
    invoke-static {}, Lcaldwell/ben/trolly/Trolly;->access$0()[Ljava/lang/String;

    move-result-object v2

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "item=\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcaldwell/ben/trolly/Trolly$2;->this$0:Lcaldwell/ben/trolly/Trolly;

    #getter for: Lcaldwell/ben/trolly/Trolly;->mTextBox:Landroid/widget/AutoCompleteTextView;
    invoke-static {v5}, Lcaldwell/ben/trolly/Trolly;->access$1(Lcaldwell/ben/trolly/Trolly;)Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 265
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 270
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 271
    if-eqz v6, :cond_0

    .line 272
    invoke-interface {v6}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const-string v0, "status"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v11, :cond_1

    .line 274
    :cond_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 275
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "item"

    iget-object v1, p0, Lcaldwell/ben/trolly/Trolly$2;->this$0:Lcaldwell/ben/trolly/Trolly;

    #getter for: Lcaldwell/ben/trolly/Trolly;->mTextBox:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcaldwell/ben/trolly/Trolly;->access$1(Lcaldwell/ben/trolly/Trolly;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcaldwell/ben/trolly/Trolly$2;->this$0:Lcaldwell/ben/trolly/Trolly;

    invoke-virtual {v0}, Lcaldwell/ben/trolly/Trolly;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcaldwell/ben/provider/Trolly$ShoppingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 284
    :goto_0
    iget-object v0, p0, Lcaldwell/ben/trolly/Trolly$2;->this$0:Lcaldwell/ben/trolly/Trolly;

    #getter for: Lcaldwell/ben/trolly/Trolly;->mTextBox:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcaldwell/ben/trolly/Trolly;->access$1(Lcaldwell/ben/trolly/Trolly;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    .end local v6           #c:Landroid/database/Cursor;
    .end local v10           #values:Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 278
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 279
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v0, "status"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 281
    .local v7, id:J
    iget-object v0, p0, Lcaldwell/ben/trolly/Trolly$2;->this$0:Lcaldwell/ben/trolly/Trolly;

    invoke-virtual {v0}, Lcaldwell/ben/trolly/Trolly;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 282
    .local v9, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcaldwell/ben/trolly/Trolly$2;->this$0:Lcaldwell/ben/trolly/Trolly;

    invoke-virtual {v0}, Lcaldwell/ben/trolly/Trolly;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v9, v10, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 286
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #id:J
    .end local v9           #uri:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_2
    sget-boolean v0, Lcaldwell/ben/trolly/Trolly;->adding:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    sput-boolean v0, Lcaldwell/ben/trolly/Trolly;->adding:Z

    .line 287
    iget-object v0, p0, Lcaldwell/ben/trolly/Trolly$2;->this$0:Lcaldwell/ben/trolly/Trolly;

    invoke-virtual {v0}, Lcaldwell/ben/trolly/Trolly;->updateList()V

    goto :goto_1

    :cond_3
    move v0, v11

    .line 286
    goto :goto_2
.end method
