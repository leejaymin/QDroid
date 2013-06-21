.class public Lnet/robotmedia/billing/model/BillingDB;
.super Ljava/lang/Object;
.source "BillingDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/robotmedia/billing/model/BillingDB$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final COLUMN_DEVELOPER_PAYLOAD:Ljava/lang/String; = "developerPayload"

.field public static final COLUMN_PRODUCT_ID:Ljava/lang/String; = "productId"

.field public static final COLUMN_PURCHASE_TIME:Ljava/lang/String; = "purchaseTime"

.field public static final COLUMN_STATE:Ljava/lang/String; = "state"

.field public static final COLUMN__ID:Ljava/lang/String; = "_id"

.field static final DATABASE_NAME:Ljava/lang/String; = "billing.db"

.field static final DATABASE_VERSION:I = 0x1

.field static final TABLE_TRANSACTIONS:Ljava/lang/String; = "purchases"

.field private static final TABLE_TRANSACTIONS_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mDatabaseHelper:Lnet/robotmedia/billing/model/BillingDB$DatabaseHelper;

.field mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 37
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "productId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 38
    const-string v2, "purchaseTime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "developerPayload"

    aput-object v2, v0, v1

    .line 36
    sput-object v0, Lnet/robotmedia/billing/model/BillingDB;->TABLE_TRANSACTIONS_COLUMNS:[Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lnet/robotmedia/billing/model/BillingDB$DatabaseHelper;

    invoke-direct {v0, p0, p1}, Lnet/robotmedia/billing/model/BillingDB$DatabaseHelper;-><init>(Lnet/robotmedia/billing/model/BillingDB;Landroid/content/Context;)V

    iput-object v0, p0, Lnet/robotmedia/billing/model/BillingDB;->mDatabaseHelper:Lnet/robotmedia/billing/model/BillingDB$DatabaseHelper;

    .line 46
    iget-object v0, p0, Lnet/robotmedia/billing/model/BillingDB;->mDatabaseHelper:Lnet/robotmedia/billing/model/BillingDB$DatabaseHelper;

    invoke-virtual {v0}, Lnet/robotmedia/billing/model/BillingDB$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/robotmedia/billing/model/BillingDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 47
    return-void
.end method

.method protected static final createTransaction(Landroid/database/Cursor;)Lnet/robotmedia/billing/model/Transaction;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 79
    new-instance v0, Lnet/robotmedia/billing/model/Transaction;

    invoke-direct {v0}, Lnet/robotmedia/billing/model/Transaction;-><init>()V

    .line 80
    .local v0, purchase:Lnet/robotmedia/billing/model/Transaction;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/robotmedia/billing/model/Transaction;->orderId:Ljava/lang/String;

    .line 81
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/robotmedia/billing/model/Transaction;->productId:Ljava/lang/String;

    .line 82
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->valueOf(I)Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    move-result-object v1

    iput-object v1, v0, Lnet/robotmedia/billing/model/Transaction;->purchaseState:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    .line 83
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lnet/robotmedia/billing/model/Transaction;->purchaseTime:J

    .line 84
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/robotmedia/billing/model/Transaction;->developerPayload:Ljava/lang/String;

    .line 85
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lnet/robotmedia/billing/model/BillingDB;->mDatabaseHelper:Lnet/robotmedia/billing/model/BillingDB$DatabaseHelper;

    invoke-virtual {v0}, Lnet/robotmedia/billing/model/BillingDB$DatabaseHelper;->close()V

    .line 51
    return-void
.end method

.method public insert(Lnet/robotmedia/billing/model/Transaction;)V
    .locals 4
    .parameter "transaction"

    .prologue
    .line 54
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 55
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    iget-object v2, p1, Lnet/robotmedia/billing/model/Transaction;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "productId"

    iget-object v2, p1, Lnet/robotmedia/billing/model/Transaction;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "state"

    iget-object v2, p1, Lnet/robotmedia/billing/model/Transaction;->purchaseState:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    invoke-virtual {v2}, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    const-string v1, "purchaseTime"

    iget-wide v2, p1, Lnet/robotmedia/billing/model/Transaction;->purchaseTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    const-string v1, "developerPayload"

    iget-object v2, p1, Lnet/robotmedia/billing/model/Transaction;->developerPayload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lnet/robotmedia/billing/model/BillingDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "purchases"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 61
    return-void
.end method

.method public queryTransactions()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 64
    iget-object v0, p0, Lnet/robotmedia/billing/model/BillingDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "purchases"

    sget-object v2, Lnet/robotmedia/billing/model/BillingDB;->TABLE_TRANSACTIONS_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryTransactions(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "productId"

    .prologue
    const/4 v5, 0x0

    .line 69
    iget-object v0, p0, Lnet/robotmedia/billing/model/BillingDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "purchases"

    sget-object v2, Lnet/robotmedia/billing/model/BillingDB;->TABLE_TRANSACTIONS_COLUMNS:[Ljava/lang/String;

    const-string v3, "productId = ?"

    .line 70
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    .line 69
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryTransactions(Ljava/lang/String;Lnet/robotmedia/billing/model/Transaction$PurchaseState;)Landroid/database/Cursor;
    .locals 8
    .parameter "productId"
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    .line 74
    iget-object v0, p0, Lnet/robotmedia/billing/model/BillingDB;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "purchases"

    sget-object v2, Lnet/robotmedia/billing/model/BillingDB;->TABLE_TRANSACTIONS_COLUMNS:[Ljava/lang/String;

    const-string v3, "productId = ? AND state = ?"

    .line 75
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const/4 v6, 0x1

    invoke-virtual {p2}, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    .line 74
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
