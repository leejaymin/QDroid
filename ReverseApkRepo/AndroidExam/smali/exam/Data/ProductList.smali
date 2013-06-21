.class public Lexam/Data/ProductList;
.super Landroid/app/Activity;
.source "ProductList.java"


# instance fields
.field mHelper:Lexam/Data/ProductDBHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x2

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v1, 0x7f03000d

    invoke-virtual {p0, v1}, Lexam/Data/ProductList;->setContentView(I)V

    .line 17
    new-instance v1, Lexam/Data/ProductDBHelper;

    invoke-direct {v1, p0}, Lexam/Data/ProductDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lexam/Data/ProductList;->mHelper:Lexam/Data/ProductDBHelper;

    .line 19
    iget-object v1, p0, Lexam/Data/ProductList;->mHelper:Lexam/Data/ProductDBHelper;

    invoke-virtual {v1}, Lexam/Data/ProductDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 21
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT * FROM product"

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 22
    .local v3, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, v3}, Lexam/Data/ProductList;->startManagingCursor(Landroid/database/Cursor;)V

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, Adapter:Landroid/widget/SimpleCursorAdapter;
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    .line 26
    .end local v0           #Adapter:Landroid/widget/SimpleCursorAdapter;
    const v2, 0x1090004

    .line 27
    new-array v4, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "name"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "price"

    aput-object v5, v4, v1

    .line 28
    new-array v5, v8, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 25
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 29
    .restart local v0       #Adapter:Landroid/widget/SimpleCursorAdapter;
    const v1, 0x7f0c001f

    invoke-virtual {p0, v1}, Lexam/Data/ProductList;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 30
    .local v7, list:Landroid/widget/ListView;
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    return-void

    .line 28
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method
