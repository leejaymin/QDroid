.class public final Lcaldwell/ben/provider/Trolly$ShoppingList;
.super Ljava/lang/Object;
.source "Trolly.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcaldwell/ben/provider/Trolly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShoppingList"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.caldwell.ben.trolly"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.caldwell.ben.trolly"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATED_DATE:Ljava/lang/String; = "created"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "item ASC"

.field public static final IN_TROLLEY:I = 0x2

.field public static final ITEM:Ljava/lang/String; = "item"

.field public static final MODIFIED_DATE:Ljava/lang/String; = "modified"

.field public static final OFF_LIST:I = 0x0

.field public static final ON_LIST:I = 0x1

.field public static final STATUS:Ljava/lang/String; = "status"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "content://caldwell.ben.provider.Trolly/shoppinglist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 38
    sput-object v0, Lcaldwell/ben/provider/Trolly$ShoppingList;->CONTENT_URI:Landroid/net/Uri;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
