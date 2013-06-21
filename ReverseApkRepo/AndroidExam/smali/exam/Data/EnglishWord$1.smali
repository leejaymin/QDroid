.class Lexam/Data/EnglishWord$1;
.super Ljava/lang/Object;
.source "EnglishWord.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Data/EnglishWord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Data/EnglishWord;


# direct methods
.method constructor <init>(Lexam/Data/EnglishWord;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Data/EnglishWord$1;->this$0:Lexam/Data/EnglishWord;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 90
    :goto_0
    :pswitch_0
    return-void

    .line 34
    :pswitch_1
    iget-object v6, p0, Lexam/Data/EnglishWord$1;->this$0:Lexam/Data/EnglishWord;

    iget-object v6, v6, Lexam/Data/EnglishWord;->mHelper:Lexam/Data/WordDBHelper;

    invoke-virtual {v6}, Lexam/Data/WordDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 36
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 37
    .local v5, row:Landroid/content/ContentValues;
    const-string v6, "eng"

    const-string v7, "boy"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v6, "han"

    const-string v7, "\uba38\uc2a4\ub9c8"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v6, "dic"

    invoke-virtual {v2, v6, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 41
    const-string v6, "INSERT INTO dic VALUES (null, \'girl\', \'\uac00\uc2dc\ub098\');"

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    iget-object v6, p0, Lexam/Data/EnglishWord$1;->this$0:Lexam/Data/EnglishWord;

    iget-object v6, v6, Lexam/Data/EnglishWord;->mHelper:Lexam/Data/WordDBHelper;

    invoke-virtual {v6}, Lexam/Data/WordDBHelper;->close()V

    .line 43
    iget-object v6, p0, Lexam/Data/EnglishWord$1;->this$0:Lexam/Data/EnglishWord;

    iget-object v6, v6, Lexam/Data/EnglishWord;->mText:Landroid/widget/EditText;

    const-string v7, "Insert Success"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 46
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #row:Landroid/content/ContentValues;
    :pswitch_2
    iget-object v6, p0, Lexam/Data/EnglishWord$1;->this$0:Lexam/Data/EnglishWord;

    iget-object v6, v6, Lexam/Data/EnglishWord;->mHelper:Lexam/Data/WordDBHelper;

    invoke-virtual {v6}, Lexam/Data/WordDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 48
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "dic"

    invoke-virtual {v2, v6, v8, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 51
    iget-object v6, p0, Lexam/Data/EnglishWord$1;->this$0:Lexam/Data/EnglishWord;

    iget-object v6, v6, Lexam/Data/EnglishWord;->mHelper:Lexam/Data/WordDBHelper;

    invoke-virtual {v6}, Lexam/Data/WordDBHelper;->close()V

    .line 52
    iget-object v6, p0, Lexam/Data/EnglishWord$1;->this$0:Lexam/Data/EnglishWord;

    iget-object v6, v6, Lexam/Data/EnglishWord;->mText:Landroid/widget/EditText;

    const-string v7, "Delete Success"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 55
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_3
    iget-object v6, p0, Lexam/Data/EnglishWord$1;->this$0:Lexam/Data/EnglishWord;

    iget-object v6, v6, Lexam/Data/EnglishWord;->mHelper:Lexam/Data/WordDBHelper;

    invoke-virtual {v6}, Lexam/Data/WordDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 57
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 58
    .restart local v5       #row:Landroid/content/ContentValues;
    const-string v6, "han"

    const-string v7, "\uc18c\ub144"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v6, "dic"

    const-string v7, "eng = \'boy\'"

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 62
    iget-object v6, p0, Lexam/Data/EnglishWord$1;->this$0:Lexam/Data/EnglishWord;

    iget-object v6, v6, Lexam/Data/EnglishWord;->mHelper:Lexam/Data/WordDBHelper;

    invoke-virtual {v6}, Lexam/Data/WordDBHelper;->close()V

    .line 63
    iget-object v6, p0, Lexam/Data/EnglishWord$1;->this$0:Lexam/Data/EnglishWord;

    iget-object v6, v6, Lexam/Data/EnglishWord;->mText:Landroid/widget/EditText;

    const-string v7, "Update Success"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 66
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #row:Landroid/content/ContentValues;
    :pswitch_4
    iget-object v6, p0, Lexam/Data/EnglishWord$1;->this$0:Lexam/Data/EnglishWord;

    iget-object v6, v6, Lexam/Data/EnglishWord;->mHelper:Lexam/Data/WordDBHelper;

    invoke-virtual {v6}, Lexam/Data/WordDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 72
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "SELECT eng, han FROM dic"

    invoke-virtual {v2, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 74
    .local v1, cursor:Landroid/database/Cursor;
    const-string v0, ""

    .line 75
    .local v0, Result:Ljava/lang/String;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 82
    iget-object v6, p0, Lexam/Data/EnglishWord$1;->this$0:Lexam/Data/EnglishWord;

    iget-object v6, v6, Lexam/Data/EnglishWord;->mText:Landroid/widget/EditText;

    const-string v7, "Empyt Set"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 87
    iget-object v6, p0, Lexam/Data/EnglishWord$1;->this$0:Lexam/Data/EnglishWord;

    iget-object v6, v6, Lexam/Data/EnglishWord;->mHelper:Lexam/Data/WordDBHelper;

    invoke-virtual {v6}, Lexam/Data/WordDBHelper;->close()V

    goto/16 :goto_0

    .line 76
    :cond_0
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, eng:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, han:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 84
    .end local v3           #eng:Ljava/lang/String;
    .end local v4           #han:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lexam/Data/EnglishWord$1;->this$0:Lexam/Data/EnglishWord;

    iget-object v6, v6, Lexam/Data/EnglishWord;->mText:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 32
    :pswitch_data_0
    .packed-switch 0x7f0c0015
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
