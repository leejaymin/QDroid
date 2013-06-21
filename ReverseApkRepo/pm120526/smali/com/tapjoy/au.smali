.class public final Lcom/tapjoy/au;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/tapjoy/as;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/au;->a:Lcom/tapjoy/as;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    sget-object v0, Lcom/tapjoy/au;->a:Lcom/tapjoy/as;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tapjoy/as;

    invoke-direct {v0, p0}, Lcom/tapjoy/as;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/au;->a:Lcom/tapjoy/as;

    :cond_0
    sget-object v0, Lcom/tapjoy/au;->a:Lcom/tapjoy/as;

    invoke-virtual {v0}, Lcom/tapjoy/as;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
