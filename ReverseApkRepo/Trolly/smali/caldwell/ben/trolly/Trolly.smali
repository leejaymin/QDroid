.class public Lcaldwell/ben/trolly/Trolly;
.super Landroid/app/ListActivity;
.source "Trolly.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcaldwell/ben/trolly/Trolly$AutoFillAdapter;,
        Lcaldwell/ben/trolly/Trolly$TrollyAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_CLEAR:I = 0x3

.field private static final DIALOG_DELETE:I = 0x1

.field private static final DIALOG_EDIT:I = 0x2

.field private static final DIALOG_RESET:I = 0x4

.field public static final KEY_ITEM:Ljava/lang/String; = "items"

.field public static final MENU_ITEM_CHECKOUT:I = 0x3

.field public static final MENU_ITEM_CLEAR:I = 0x9

.field public static final MENU_ITEM_DELETE:I = 0x1

.field public static final MENU_ITEM_EDIT:I = 0x8

.field public static final MENU_ITEM_INSERT:I = 0x2

.field public static final MENU_ITEM_IN_TROLLEY:I = 0x7

.field public static final MENU_ITEM_OFF_LIST:I = 0x6

.field public static final MENU_ITEM_ON_LIST:I = 0x5

.field public static final MENU_ITEM_PREFERENCE:I = 0x4

.field public static final MENU_ITEM_RESET:I = 0xa

.field private static final PROJECTION:[Ljava/lang/String;

.field public static adding:Z


# instance fields
.field private btnAdd:Landroid/widget/Button;

.field private mAdapter:Lcaldwell/ben/trolly/Trolly$TrollyAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mDialogEdit:Landroid/widget/EditText;

.field private mDialogText:Landroid/widget/TextView;

.field private mDialogView:Landroid/view/View;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mTextBox:Landroid/widget/AutoCompleteTextView;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    sput-boolean v2, Lcaldwell/ben/trolly/Trolly;->adding:Z

    .line 187
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 188
    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 189
    const-string v2, "item"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 190
    const-string v2, "status"

    aput-object v2, v0, v1

    .line 187
    sput-object v0, Lcaldwell/ben/trolly/Trolly;->PROJECTION:[Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcaldwell/ben/trolly/Trolly;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcaldwell/ben/trolly/Trolly;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcaldwell/ben/trolly/Trolly;->mTextBox:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$2(Lcaldwell/ben/trolly/Trolly;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcaldwell/ben/trolly/Trolly;->mDialogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcaldwell/ben/trolly/Trolly;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcaldwell/ben/trolly/Trolly;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private addExtraItems()V
    .locals 14

    .prologue
    .line 615
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "org.openintents.extra.STRING_ARRAYLIST_SHOPPING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 619
    .local v10, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    return-void

    .line 619
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 620
    .local v9, item:Ljava/lang/String;
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 621
    sget-object v2, Lcaldwell/ben/trolly/Trolly;->PROJECTION:[Ljava/lang/String;

    .line 622
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "item=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 623
    const/4 v4, 0x0

    .line 624
    const/4 v5, 0x0

    .line 620
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 627
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 628
    invoke-interface {v6}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 630
    .local v13, values:Landroid/content/ContentValues;
    const-string v0, "item"

    invoke-virtual {v13, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v0, "status"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 632
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 636
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_1
    const-string v0, "status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 637
    .local v11, status:I
    if-nez v11, :cond_2

    .line 639
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 640
    .restart local v13       #values:Landroid/content/ContentValues;
    const-string v0, "status"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 642
    .local v7, id:J
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 643
    .local v12, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v12, v13, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 650
    .end local v7           #id:J
    .end local v12           #uri:Landroid/net/Uri;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_2
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 651
    .restart local v13       #values:Landroid/content/ContentValues;
    const-string v0, "item"

    invoke-virtual {v13, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v0, "status"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method private checkout()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    const/4 v3, 0x0

    const-string v14, "_id"

    const-string v12, "status"

    .line 582
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcaldwell/ben/trolly/Trolly;->PROJECTION:[Ljava/lang/String;

    .line 583
    const-string v5, "item ASC"

    move-object v0, p0

    move-object v4, v3

    .line 582
    invoke-virtual/range {v0 .. v5}, Lcaldwell/ben/trolly/Trolly;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 584
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 585
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 586
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "status"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 591
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    return-void

    .line 592
    :cond_0
    const-string v0, "status"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 594
    .local v9, status:I
    const/4 v0, 0x2

    if-ne v9, v0, :cond_1

    .line 595
    const-string v0, "_id"

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 596
    .local v7, id:J
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 598
    .local v10, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v10, v11, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 600
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "item=\'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    const-string v4, "item"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 603
    const-string v4, "\' AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_id"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 604
    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "status"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 601
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 600
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 607
    .end local v7           #id:J
    .end local v10           #uri:Landroid/net/Uri;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    .line 370
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v9

    check-cast v9, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .local v9, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, v9, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/Cursor;

    .line 376
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 378
    const/4 v0, 0x0

    .line 414
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :goto_0
    return v0

    .line 371
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 372
    .local v8, e:Ljava/lang/ClassCastException;
    const/4 v0, 0x0

    goto :goto_0

    .line 381
    .end local v8           #e:Ljava/lang/ClassCastException;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :cond_0
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 382
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 381
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcaldwell/ben/trolly/Trolly;->mUri:Landroid/net/Uri;

    .line 383
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mUri:Landroid/net/Uri;

    sget-object v2, Lcaldwell/ben/trolly/Trolly;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 384
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 385
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 387
    .local v10, values:Landroid/content/ContentValues;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 414
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 390
    :pswitch_1
    const-string v0, "status"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 392
    const/4 v0, 0x1

    goto :goto_0

    .line 395
    :pswitch_2
    const-string v0, "status"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 397
    const/4 v0, 0x1

    goto :goto_0

    .line 400
    :pswitch_3
    const-string v0, "status"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 402
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 405
    :pswitch_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcaldwell/ben/trolly/Trolly;->showDialog(I)V

    .line 406
    iget-object v0, p0, Lcaldwell/ben/trolly/Trolly;->mDialogEdit:Landroid/widget/EditText;

    const-string v1, "item"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 407
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 410
    :pswitch_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcaldwell/ben/trolly/Trolly;->showDialog(I)V

    .line 411
    iget-object v0, p0, Lcaldwell/ben/trolly/Trolly;->mDialogText:Landroid/widget/TextView;

    const-string v1, "item"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 234
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 235
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    .line 236
    sget-object v1, Lcaldwell/ben/provider/Trolly$ShoppingList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 239
    :cond_0
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcaldwell/ben/trolly/Trolly;->setContentView(I)V

    .line 241
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 243
    const/4 v1, 0x0

    sput-boolean v1, Lcaldwell/ben/trolly/Trolly;->adding:Z

    .line 244
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->updateList()V

    .line 246
    const v1, 0x7f080004

    invoke-virtual {p0, v1}, Lcaldwell/ben/trolly/Trolly;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mTextBox:Landroid/widget/AutoCompleteTextView;

    .line 247
    const v1, 0x7f080003

    invoke-virtual {p0, v1}, Lcaldwell/ben/trolly/Trolly;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcaldwell/ben/trolly/Trolly;->btnAdd:Landroid/widget/Button;

    .line 249
    iget-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mTextBox:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcaldwell/ben/trolly/Trolly$1;

    invoke-direct {v2, p0}, Lcaldwell/ben/trolly/Trolly$1;-><init>(Lcaldwell/ben/trolly/Trolly;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v1, p0, Lcaldwell/ben/trolly/Trolly;->btnAdd:Landroid/widget/Button;

    new-instance v2, Lcaldwell/ben/trolly/Trolly$2;

    invoke-direct {v2, p0}, Lcaldwell/ben/trolly/Trolly$2;-><init>(Lcaldwell/ben/trolly/Trolly;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mPrefs:Landroid/content/SharedPreferences;

    .line 294
    const-string v1, "org.openintents.extra.STRING_ARRAYLIST_SHOPPING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    invoke-direct {p0}, Lcaldwell/ben/trolly/Trolly;->addExtraItems()V

    .line 296
    :cond_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v11, 0x7f07000b

    const/4 v10, 0x7

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 422
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 427
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 454
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v2

    .line 424
    .local v2, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 432
    .end local v2           #e:Ljava/lang/ClassCastException;
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v3       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :cond_0
    const-string v5, "item"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 433
    const-string v5, "status"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 436
    .local v4, status:I
    packed-switch v4, :pswitch_data_0

    .line 452
    :goto_1
    const/16 v5, 0x8

    const v6, 0x7f07000a

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 453
    const/4 v5, 0x1

    const v6, 0x7f070009

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 438
    :pswitch_0
    invoke-interface {p1, v7, v8, v7, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 439
    const v5, 0x7f07000d

    invoke-interface {p1, v7, v10, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 442
    :pswitch_1
    const v5, 0x7f07000d

    invoke-interface {p1, v7, v10, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 443
    const v5, 0x7f07000c

    invoke-interface {p1, v7, v9, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 446
    :pswitch_2
    invoke-interface {p1, v7, v8, v7, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 447
    const v5, 0x7f07000c

    invoke-interface {p1, v7, v9, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const/high16 v5, 0x7f08

    const/high16 v1, 0x7f03

    const v4, 0x7f070008

    const v3, 0x7f070007

    const/4 v2, 0x0

    .line 496
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 497
    .local v0, factory:Landroid/view/LayoutInflater;
    packed-switch p1, :pswitch_data_0

    move-object v1, v2

    .line 575
    :goto_0
    return-object v1

    .line 499
    :pswitch_0
    const v1, 0x7f030001

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mDialogView:Landroid/view/View;

    .line 500
    iget-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mDialogView:Landroid/view/View;

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mDialogEdit:Landroid/widget/EditText;

    .line 501
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 502
    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 503
    iget-object v2, p0, Lcaldwell/ben/trolly/Trolly;->mDialogView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 504
    new-instance v2, Lcaldwell/ben/trolly/Trolly$3;

    invoke-direct {v2, p0}, Lcaldwell/ben/trolly/Trolly$3;-><init>(Lcaldwell/ben/trolly/Trolly;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 512
    new-instance v2, Lcaldwell/ben/trolly/Trolly$4;

    invoke-direct {v2, p0}, Lcaldwell/ben/trolly/Trolly$4;-><init>(Lcaldwell/ben/trolly/Trolly;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 517
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 519
    :pswitch_1
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mDialogView:Landroid/view/View;

    .line 520
    iget-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mDialogView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mDialogText:Landroid/widget/TextView;

    .line 521
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 522
    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 523
    iget-object v2, p0, Lcaldwell/ben/trolly/Trolly;->mDialogView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 524
    new-instance v2, Lcaldwell/ben/trolly/Trolly$5;

    invoke-direct {v2, p0}, Lcaldwell/ben/trolly/Trolly$5;-><init>(Lcaldwell/ben/trolly/Trolly;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 530
    new-instance v2, Lcaldwell/ben/trolly/Trolly$6;

    invoke-direct {v2, p0}, Lcaldwell/ben/trolly/Trolly$6;-><init>(Lcaldwell/ben/trolly/Trolly;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 535
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 537
    :pswitch_2
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mDialogView:Landroid/view/View;

    .line 538
    iget-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mDialogView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mDialogText:Landroid/widget/TextView;

    .line 539
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 540
    const v2, 0x7f070011

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 541
    iget-object v2, p0, Lcaldwell/ben/trolly/Trolly;->mDialogView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 542
    new-instance v2, Lcaldwell/ben/trolly/Trolly$7;

    invoke-direct {v2, p0}, Lcaldwell/ben/trolly/Trolly$7;-><init>(Lcaldwell/ben/trolly/Trolly;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 550
    new-instance v2, Lcaldwell/ben/trolly/Trolly$8;

    invoke-direct {v2, p0}, Lcaldwell/ben/trolly/Trolly$8;-><init>(Lcaldwell/ben/trolly/Trolly;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 555
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 557
    :pswitch_3
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mDialogView:Landroid/view/View;

    .line 558
    iget-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mDialogView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mDialogText:Landroid/widget/TextView;

    .line 559
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 560
    const v2, 0x7f070013

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 561
    iget-object v2, p0, Lcaldwell/ben/trolly/Trolly;->mDialogView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 562
    new-instance v2, Lcaldwell/ben/trolly/Trolly$9;

    invoke-direct {v2, p0}, Lcaldwell/ben/trolly/Trolly$9;-><init>(Lcaldwell/ben/trolly/Trolly;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 568
    new-instance v2, Lcaldwell/ben/trolly/Trolly$10;

    invoke-direct {v2, p0}, Lcaldwell/ben/trolly/Trolly$10;-><init>(Lcaldwell/ben/trolly/Trolly;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 573
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 458
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 459
    const/4 v0, 0x2

    const v1, 0x7f070006

    invoke-interface {p1, v3, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 460
    const v1, 0x1080022

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 461
    const/16 v0, 0x9

    const v1, 0x7f070011

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 462
    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 463
    const v0, 0x7f070010

    invoke-interface {p1, v3, v4, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 464
    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 465
    const/16 v0, 0xa

    const/4 v1, 0x5

    const v2, 0x7f070013

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 466
    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 467
    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const-string v8, "status"

    .line 339
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 340
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcaldwell/ben/trolly/Trolly;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 341
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 342
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 343
    .local v7, values:Landroid/content/ContentValues;
    const-string v0, "status"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 360
    :goto_0
    sget-boolean v0, Lcaldwell/ben/trolly/Trolly;->adding:Z

    if-eqz v0, :cond_0

    .line 361
    const/4 v0, 0x0

    sput-boolean v0, Lcaldwell/ben/trolly/Trolly;->adding:Z

    .line 362
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->updateList()V

    .line 364
    :cond_0
    return-void

    .line 347
    :pswitch_0
    const-string v0, "status"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v7, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :pswitch_1
    const-string v0, "status"

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v7, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 356
    :pswitch_2
    const-string v0, "status"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v7, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 472
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 491
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 475
    :pswitch_1
    invoke-direct {p0}, Lcaldwell/ben/trolly/Trolly;->checkout()V

    move v0, v2

    .line 476
    goto :goto_0

    .line 479
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcaldwell/ben/trolly/Trolly;->showDialog(I)V

    .line 480
    iget-object v0, p0, Lcaldwell/ben/trolly/Trolly;->mDialogText:Landroid/widget/TextView;

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move v0, v2

    .line 481
    goto :goto_0

    .line 484
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcaldwell/ben/trolly/Trolly;->showDialog(I)V

    .line 485
    iget-object v0, p0, Lcaldwell/ben/trolly/Trolly;->mDialogText:Landroid/widget/TextView;

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move v0, v2

    .line 486
    goto :goto_0

    .line 488
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcaldwell/ben/trolly/TrollyPreferences;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcaldwell/ben/trolly/Trolly;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 489
    goto :goto_0

    .line 472
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 331
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 332
    iget-object v1, p0, Lcaldwell/ben/trolly/Trolly;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 333
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 334
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 314
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 316
    const/4 v0, 0x0

    sput-boolean v0, Lcaldwell/ben/trolly/Trolly;->adding:Z

    .line 317
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->updateList()V

    .line 319
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 320
    sget-object v2, Lcaldwell/ben/trolly/Trolly;->PROJECTION:[Ljava/lang/String;

    .line 323
    const-string v5, "item ASC"

    move-object v0, p0

    move-object v4, v3

    .line 319
    invoke-virtual/range {v0 .. v5}, Lcaldwell/ben/trolly/Trolly;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 325
    .local v7, cAutoFill:Landroid/database/Cursor;
    new-instance v6, Lcaldwell/ben/trolly/Trolly$AutoFillAdapter;

    invoke-direct {v6, p0, v7}, Lcaldwell/ben/trolly/Trolly$AutoFillAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 326
    .local v6, autoFillAdapter:Lcaldwell/ben/trolly/Trolly$AutoFillAdapter;
    iget-object v0, p0, Lcaldwell/ben/trolly/Trolly;->mTextBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v6}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 327
    return-void
.end method

.method protected updateList()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 300
    invoke-virtual {p0}, Lcaldwell/ben/trolly/Trolly;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 301
    sget-object v2, Lcaldwell/ben/trolly/Trolly;->PROJECTION:[Ljava/lang/String;

    .line 302
    sget-boolean v0, Lcaldwell/ben/trolly/Trolly;->adding:Z

    if-eqz v0, :cond_0

    move-object v3, v4

    .line 304
    :goto_0
    const-string v5, "item ASC"

    move-object v0, p0

    .line 300
    invoke-virtual/range {v0 .. v5}, Lcaldwell/ben/trolly/Trolly;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcaldwell/ben/trolly/Trolly;->mCursor:Landroid/database/Cursor;

    .line 307
    new-instance v0, Lcaldwell/ben/trolly/Trolly$TrollyAdapter;

    const v2, 0x7f030002

    iget-object v3, p0, Lcaldwell/ben/trolly/Trolly;->mCursor:Landroid/database/Cursor;

    .line 308
    new-array v4, v7, [Ljava/lang/String;

    const-string v1, "item"

    aput-object v1, v4, v6

    new-array v5, v7, [I

    const v1, 0x7f080002

    aput v1, v5, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcaldwell/ben/trolly/Trolly$TrollyAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 307
    iput-object v0, p0, Lcaldwell/ben/trolly/Trolly;->mAdapter:Lcaldwell/ben/trolly/Trolly$TrollyAdapter;

    .line 309
    iget-object v0, p0, Lcaldwell/ben/trolly/Trolly;->mAdapter:Lcaldwell/ben/trolly/Trolly$TrollyAdapter;

    invoke-virtual {p0, v0}, Lcaldwell/ben/trolly/Trolly;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 310
    return-void

    .line 302
    :cond_0
    const-string v0, "status<>0"

    move-object v3, v0

    goto :goto_0
.end method
