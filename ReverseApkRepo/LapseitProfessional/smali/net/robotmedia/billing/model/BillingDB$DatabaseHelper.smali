.class Lnet/robotmedia/billing/model/BillingDB$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BillingDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/robotmedia/billing/model/BillingDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/robotmedia/billing/model/BillingDB;


# direct methods
.method public constructor <init>(Lnet/robotmedia/billing/model/BillingDB;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 89
    iput-object p1, p0, Lnet/robotmedia/billing/model/BillingDB$DatabaseHelper;->this$0:Lnet/robotmedia/billing/model/BillingDB;

    .line 90
    const-string v0, "billing.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 91
    return-void
.end method

.method private createTransactionsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 99
    const-string v0, "CREATE TABLE purchases(_id TEXT PRIMARY KEY, productId INTEGER, state TEXT, purchaseTime TEXT, developerPayload INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lnet/robotmedia/billing/model/BillingDB$DatabaseHelper;->createTransactionsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 108
    return-void
.end method
