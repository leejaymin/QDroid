.class Lexam/Data/CallWordCP$1;
.super Ljava/lang/Object;
.source "CallWordCP.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Data/CallWordCP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Data/CallWordCP;


# direct methods
.method constructor <init>(Lexam/Data/CallWordCP;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Data/CallWordCP$1;->this$0:Lexam/Data/CallWordCP;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    .line 30
    iget-object v1, p0, Lexam/Data/CallWordCP$1;->this$0:Lexam/Data/CallWordCP;

    invoke-virtual {v1}, Lexam/Data/CallWordCP;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 31
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 34
    :pswitch_0
    const-string v1, "content://exam.Data.EnglishWord/word"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 36
    .local v8, cursor:Landroid/database/Cursor;
    const-string v6, ""

    .line 37
    .local v6, Result:Ljava/lang/String;
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 44
    iget-object v1, p0, Lexam/Data/CallWordCP$1;->this$0:Lexam/Data/CallWordCP;

    iget-object v1, v1, Lexam/Data/CallWordCP;->mText:Landroid/widget/EditText;

    const-string v2, "Empyt Set"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 38
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 39
    .local v10, eng:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 40
    .local v11, han:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 46
    .end local v10           #eng:Ljava/lang/String;
    .end local v11           #han:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lexam/Data/CallWordCP$1;->this$0:Lexam/Data/CallWordCP;

    iget-object v1, v1, Lexam/Data/CallWordCP;->mText:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 52
    .end local v6           #Result:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :pswitch_1
    const-string v1, "content://exam.Data.EnglishWord/word/boy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 53
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 52
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 55
    .local v9, cursor2:Landroid/database/Cursor;
    const-string v7, ""

    .line 56
    .local v7, Result2:Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 58
    .restart local v10       #eng:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 59
    .restart local v11       #han:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 62
    .end local v10           #eng:Ljava/lang/String;
    .end local v11           #han:Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 63
    iget-object v1, p0, Lexam/Data/CallWordCP$1;->this$0:Lexam/Data/CallWordCP;

    iget-object v1, v1, Lexam/Data/CallWordCP;->mText:Landroid/widget/EditText;

    const-string v2, "Empyt Set"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 65
    :cond_3
    iget-object v1, p0, Lexam/Data/CallWordCP$1;->this$0:Lexam/Data/CallWordCP;

    iget-object v1, v1, Lexam/Data/CallWordCP;->mText:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 71
    .end local v7           #Result2:Ljava/lang/String;
    .end local v9           #cursor2:Landroid/database/Cursor;
    :pswitch_2
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 72
    .local v12, row:Landroid/content/ContentValues;
    const-string v1, "eng"

    const-string v2, "school"

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "han"

    const-string v2, "\ud559\uad50"

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "content://exam.Data.EnglishWord/word"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 76
    iget-object v1, p0, Lexam/Data/CallWordCP$1;->this$0:Lexam/Data/CallWordCP;

    iget-object v1, v1, Lexam/Data/CallWordCP;->mText:Landroid/widget/EditText;

    const-string v2, "Insert Success"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 80
    .end local v12           #row:Landroid/content/ContentValues;
    :pswitch_3
    const-string v1, "content://exam.Data.EnglishWord/word"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lexam/Data/CallWordCP$1;->this$0:Lexam/Data/CallWordCP;

    iget-object v1, v1, Lexam/Data/CallWordCP;->mText:Landroid/widget/EditText;

    const-string v2, "Delete Success"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 85
    :pswitch_4
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 86
    .local v13, row2:Landroid/content/ContentValues;
    const-string v1, "han"

    const-string v2, "\ud575\uad50"

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "content://exam.Data.EnglishWord/word/school"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lexam/Data/CallWordCP$1;->this$0:Lexam/Data/CallWordCP;

    iget-object v1, v1, Lexam/Data/CallWordCP;->mText:Landroid/widget/EditText;

    const-string v2, "Update Success"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0013
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
