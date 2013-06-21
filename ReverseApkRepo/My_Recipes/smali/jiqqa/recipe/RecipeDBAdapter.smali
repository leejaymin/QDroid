.class public Ljiqqa/recipe/RecipeDBAdapter;
.super Ljava/lang/Object;
.source "RecipeDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljiqqa/recipe/RecipeDBAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final CREATE_DATABASE:Ljava/lang/String; = "CREATE TABLE recipes (_id integer primary key autoincrement, _category text not null, _title text not null, _serves text not null, _ingredients text not null, _instructions text not null,_image text not null);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "recipes.db"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "recipes"

.field private static final DATABASE_VERSION:I = 0x3

.field public static final ROW_CATEGORY:Ljava/lang/String; = "_category"

.field public static final ROW_ID:Ljava/lang/String; = "_id"

.field public static final ROW_IMAGE:Ljava/lang/String; = "_image"

.field public static final ROW_INGREDIENTS:Ljava/lang/String; = "_ingredients"

.field public static final ROW_INSTRUCTIONS:Ljava/lang/String; = "_instructions"

.field public static final ROW_SERVES:Ljava/lang/String; = "_serves"

.field public static final ROW_TITLE:Ljava/lang/String; = "_title"

.field private static final TAG:Ljava/lang/String; = "My Recipes"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mDBHelper:Ljiqqa/recipe/RecipeDBAdapter$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Ljiqqa/recipe/RecipeDBAdapter;->mCtx:Landroid/content/Context;

    .line 61
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Ljiqqa/recipe/RecipeDBAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 71
    return-void
.end method

.method public deleteRecipe(J)Z
    .locals 4
    .parameter "rowId"

    .prologue
    .line 75
    iget-object v0, p0, Ljiqqa/recipe/RecipeDBAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "recipes"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enterRecipe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .parameter "rCategory"
    .parameter "rTitle"
    .parameter "rServes"
    .parameter "rIngredients"
    .parameter "rInstructions"
    .parameter "imageURI"

    .prologue
    .line 132
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "_category"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "_serves"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "_ingredients"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "_instructions"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "_image"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Ljiqqa/recipe/RecipeDBAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "recipes"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getAllRecipes()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v0, p0, Ljiqqa/recipe/RecipeDBAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "recipes"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "_category"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "_title"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "_serves"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "_ingredients"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    .line 81
    const-string v5, "_instructions"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "_image"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 80
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCategories(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "whatCat"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 98
    iget-object v0, p0, Ljiqqa/recipe/RecipeDBAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "recipes"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "_title"

    aput-object v3, v2, v7

    const/4 v3, 0x2

    .line 99
    const-string v4, "_category"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "_ingredients"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "_instructions"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "_serves"

    aput-object v4, v2, v3

    const-string v3, "_category=?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    .line 98
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 100
    .local v8, mCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 101
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 103
    :cond_0
    return-object v8
.end method

.method public getRecipeCount()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    iget-object v1, p0, Ljiqqa/recipe/RecipeDBAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT COUNT(_title) FROM recipes"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 123
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 126
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSingleRecipe(J)Landroid/database/Cursor;
    .locals 11
    .parameter "rowID"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 87
    iget-object v0, p0, Ljiqqa/recipe/RecipeDBAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "recipes"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    const-string v4, "_category"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "_title"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    .line 88
    const-string v6, "_serves"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string v6, "_ingredients"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    const-string v6, "_instructions"

    aput-object v6, v3, v4

    const/4 v4, 0x6

    const-string v6, "_image"

    aput-object v6, v3, v4

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    .line 87
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 90
    .local v10, mCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 91
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 93
    :cond_0
    return-object v10
.end method

.method public open()Ljiqqa/recipe/RecipeDBAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljiqqa/recipe/RecipeDBAdapter$DatabaseHelper;

    iget-object v1, p0, Ljiqqa/recipe/RecipeDBAdapter;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Ljiqqa/recipe/RecipeDBAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljiqqa/recipe/RecipeDBAdapter;->mDBHelper:Ljiqqa/recipe/RecipeDBAdapter$DatabaseHelper;

    .line 65
    iget-object v0, p0, Ljiqqa/recipe/RecipeDBAdapter;->mDBHelper:Ljiqqa/recipe/RecipeDBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Ljiqqa/recipe/RecipeDBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Ljiqqa/recipe/RecipeDBAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    return-object p0
.end method

.method public updateRecipe(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "rowID"
    .parameter "recipeCategory"
    .parameter "recipeTitle"
    .parameter "recipeServes"
    .parameter "recipeIngredients"
    .parameter "recipeInstructions"
    .parameter "imageURI"

    .prologue
    .line 109
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 110
    .local v0, cValues:Landroid/content/ContentValues;
    const-string v1, "_category"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "_serves"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "_ingredients"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v1, "_instructions"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "_image"

    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Ljiqqa/recipe/RecipeDBAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "recipes"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
