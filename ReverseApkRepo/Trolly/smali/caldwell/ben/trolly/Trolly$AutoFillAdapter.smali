.class Lcaldwell/ben/trolly/Trolly$AutoFillAdapter;
.super Landroid/widget/CursorAdapter;
.source "Trolly.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcaldwell/ben/trolly/Trolly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoFillAdapter"
.end annotation


# instance fields
.field private mContent:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "c"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcaldwell/ben/trolly/Trolly$AutoFillAdapter;->mContent:Landroid/content/ContentResolver;

    .line 141
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 145
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    const-string v0, "item"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 160
    const-string v0, "item"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 150
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 152
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x109000a

    .line 153
    const/4 v3, 0x0

    .line 151
    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 154
    .local v1, view:Landroid/widget/TextView;
    const-string v2, "item"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-object v1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 8
    .parameter "constraint"

    .prologue
    const/4 v6, 0x0

    const-string v4, "*"

    .line 165
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly$AutoFillAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly$AutoFillAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v1

    .line 179
    :goto_0
    return-object v1

    .line 169
    :cond_0
    const/4 v7, 0x0

    .line 170
    .local v7, buffer:Ljava/lang/StringBuilder;
    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 171
    .local v5, args:[Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #buffer:Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .restart local v7       #buffer:Ljava/lang/StringBuilder;
    const-string v1, "UPPER("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, "item"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, ") GLOB ?"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .end local v5           #args:[Ljava/lang/String;
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "*"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 179
    .restart local v5       #args:[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcaldwell/ben/trolly/Trolly$AutoFillAdapter;->mContent:Landroid/content/ContentResolver;

    sget-object v2, Lcaldwell/ben/provider/Trolly$ShoppingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcaldwell/ben/trolly/Trolly;->access$0()[Ljava/lang/String;

    move-result-object v3

    .line 180
    if-nez v7, :cond_2

    move-object v4, v6

    .line 179
    :goto_1
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
