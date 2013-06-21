.class public Lcom/superdroid/sqd/data/DataCache;
.super Ljava/lang/Object;
.source "DataCache.java"


# static fields
.field private static _ContactNumberNameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static _recipientIdsNumberCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/superdroid/sqd/data/DataCache;->_ContactNumberNameCache:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/superdroid/sqd/data/DataCache;->_recipientIdsNumberCache:Ljava/util/Map;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addContactNumberName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "number"
    .parameter "name"

    .prologue
    .line 15
    sget-object v0, Lcom/superdroid/sqd/data/DataCache;->_ContactNumberNameCache:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public static addRecipientIdsAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "recipientIds"
    .parameter "number"

    .prologue
    .line 23
    sget-object v0, Lcom/superdroid/sqd/data/DataCache;->_recipientIdsNumberCache:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public static getAddressByRecipientIds(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "recipientIds"

    .prologue
    .line 19
    sget-object v0, Lcom/superdroid/sqd/data/DataCache;->_recipientIdsNumberCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getContactNameByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"

    .prologue
    .line 11
    sget-object v0, Lcom/superdroid/sqd/data/DataCache;->_ContactNumberNameCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
